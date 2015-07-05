.class public final Landroid/support/v7/widget/bv;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ce;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ce;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ce;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ce;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/support/v7/widget/bu;

.field private h:Landroid/support/v7/widget/cc;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 3824
    iput-object p1, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    .line 3826
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    .line 3828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    .line 3830
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bv;->e:Ljava/util/List;

    .line 3833
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/bv;->f:I

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/bv;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 3824
    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 4151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 4152
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4153
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4154
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/bv;->a(Landroid/view/ViewGroup;Z)V

    .line 4151
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4157
    :cond_1
    if-nez p2, :cond_2

    .line 4169
    :goto_1
    return-void

    .line 4161
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 4162
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4163
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4165
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 4166
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4167
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 4131
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4132
    invoke-static {p1}, Landroid/support/v4/view/ce;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4134
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ce;->c(Landroid/view/View;I)V

    .line 4137
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ce;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4138
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/cf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/cf;->b()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ce;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 4142
    :cond_1
    return-void
.end method

.method private f(Landroid/support/v7/widget/ce;)V
    .locals 2

    .prologue
    .line 4145
    iget-object v0, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4146
    iget-object v0, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/bv;->a(Landroid/view/ViewGroup;Z)V

    .line 4148
    :cond_0
    return-void
.end method


# virtual methods
.method a(IIZ)Landroid/support/v7/widget/ce;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4409
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 4412
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4413
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4414
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->i()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v4

    if-ne v4, p1, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->l()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v4}, Landroid/support/v7/widget/cb;->d(Landroid/support/v7/widget/cb;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4416
    :cond_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->f()I

    move-result v2

    if-eq v2, p2, :cond_4

    .line 4417
    const-string/jumbo v2, "RecyclerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scrap view for position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isn\'t dirty but has"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " wrong view type! (found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->f()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " but expected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    :cond_1
    if-nez p3, :cond_2

    .line 4428
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/r;->a(II)Landroid/view/View;

    move-result-object v0

    .line 4429
    if-eqz v0, :cond_2

    .line 4431
    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    iget-object v3, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/bl;->c(Landroid/support/v7/widget/ce;)V

    .line 4436
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4437
    :goto_1
    if-ge v1, v2, :cond_7

    .line 4438
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4441
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->l()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 4442
    if-nez p3, :cond_3

    .line 4443
    iget-object v2, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4452
    :cond_3
    :goto_2
    return-object v0

    .line 4422
    :cond_4
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ce;->a(I)V

    goto :goto_2

    .line 4412
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 4437
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 4452
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method a(JIZ)Landroid/support/v7/widget/ce;
    .locals 5

    .prologue
    .line 4457
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4458
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 4459
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4460
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->e()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->i()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4461
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->f()I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 4462
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ce;->a(I)V

    .line 4463
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4472
    iget-object v1, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v1}, Landroid/support/v7/widget/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4473
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ce;->a(II)V

    .line 4502
    :cond_0
    :goto_1
    return-object v0

    .line 4478
    :cond_1
    if-nez p4, :cond_2

    .line 4480
    iget-object v2, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4481
    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4482
    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bv;->b(Landroid/view/View;)V

    .line 4458
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4488
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4489
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 4490
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4491
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->e()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    .line 4492
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->f()I

    move-result v2

    if-ne p3, v2, :cond_4

    .line 4493
    if-nez p4, :cond_0

    .line 4494
    iget-object v2, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4497
    :cond_4
    if-nez p4, :cond_5

    .line 4498
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bv;->d(I)V

    .line 4489
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 4502
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(IZ)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4003
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4004
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v2}, Landroid/support/v7/widget/cb;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4010
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4011
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bv;->f(I)Landroid/support/v7/widget/ce;

    move-result-object v4

    .line 4012
    if-eqz v4, :cond_5

    move v0, v1

    :goto_0
    move-object v8, v4

    move v4, v0

    move-object v0, v8

    .line 4015
    :goto_1
    if-nez v0, :cond_15

    .line 4016
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/bv;->a(IIZ)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 4017
    if-eqz v0, :cond_15

    .line 4018
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/ce;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4020
    if-nez p2, :cond_3

    .line 4023
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ce;->a(I)V

    .line 4024
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->g()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4025
    iget-object v5, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4026
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->h()V

    .line 4030
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bv;->b(Landroid/support/v7/widget/ce;)V

    :cond_3
    move-object v0, v3

    move v3, v4

    .line 4038
    :goto_3
    if-nez v0, :cond_14

    .line 4039
    iget-object v4, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/o;->a(I)I

    move-result v4

    .line 4040
    if-ltz v4, :cond_4

    iget-object v5, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/bi;->a()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 4041
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v2}, Landroid/support/v7/widget/cb;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    .line 4012
    goto/16 :goto_0

    .line 4027
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4028
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->j()V

    goto :goto_2

    :cond_7
    move v3, v1

    .line 4034
    goto :goto_3

    .line 4046
    :cond_8
    iget-object v5, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/bi;->a(I)I

    move-result v5

    .line 4048
    iget-object v6, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/bi;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4049
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bi;->b(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v5, p2}, Landroid/support/v7/widget/bv;->a(JIZ)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 4050
    if-eqz v0, :cond_9

    .line 4052
    iput v4, v0, Landroid/support/v7/widget/ce;->b:I

    move v3, v1

    .line 4056
    :cond_9
    if-nez v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/bv;->h:Landroid/support/v7/widget/cc;

    if-eqz v4, :cond_b

    .line 4059
    iget-object v4, p0, Landroid/support/v7/widget/bv;->h:Landroid/support/v7/widget/cc;

    invoke-virtual {v4, p0, p1, v5}, Landroid/support/v7/widget/cc;->a(Landroid/support/v7/widget/bv;II)Landroid/view/View;

    move-result-object v4

    .line 4061
    if-eqz v4, :cond_b

    .line 4062
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 4063
    if-nez v0, :cond_a

    .line 4064
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4066
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4067
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4073
    :cond_b
    if-nez v0, :cond_c

    .line 4080
    invoke-virtual {p0}, Landroid/support/v7/widget/bv;->f()Landroid/support/v7/widget/bu;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/bu;->a(I)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 4081
    if-eqz v0, :cond_c

    .line 4082
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->s()V

    .line 4083
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->r()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4084
    invoke-direct {p0, v0}, Landroid/support/v7/widget/bv;->f(Landroid/support/v7/widget/ce;)V

    .line 4088
    :cond_c
    if-nez v0, :cond_14

    .line 4089
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/bi;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ce;

    move-result-object v0

    move v4, v3

    move-object v3, v0

    .line 4096
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4098
    iput p1, v3, Landroid/support/v7/widget/ce;->f:I

    move v5, v2

    .line 4114
    :goto_5
    iget-object v0, v3, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4116
    if-nez v0, :cond_10

    .line 4117
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 4118
    iget-object v6, v3, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4125
    :goto_6
    iput-object v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->a:Landroid/support/v7/widget/ce;

    .line 4126
    if-eqz v4, :cond_12

    if-eqz v5, :cond_12

    :goto_7
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Z

    .line 4127
    iget-object v0, v3, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    return-object v0

    .line 4099
    :cond_d
    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->m()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4104
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(I)I

    move-result v0

    .line 4105
    iget-object v5, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iput-object v5, v3, Landroid/support/v7/widget/ce;->i:Landroid/support/v7/widget/RecyclerView;

    .line 4106
    iget-object v5, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Landroid/support/v7/widget/bi;->b(Landroid/support/v7/widget/ce;I)V

    .line 4107
    iget-object v0, v3, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/bv;->d(Landroid/view/View;)V

    .line 4109
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4110
    iput p1, v3, Landroid/support/v7/widget/ce;->f:I

    :cond_f
    move v5, v1

    goto :goto_5

    .line 4119
    :cond_10
    iget-object v6, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 4120
    iget-object v6, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 4121
    iget-object v6, v3, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 4123
    :cond_11
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    goto :goto_6

    :cond_12
    move v1, v2

    .line 4126
    goto :goto_7

    :cond_13
    move v5, v2

    goto :goto_5

    :cond_14
    move v4, v3

    move-object v3, v0

    goto/16 :goto_4

    :cond_15
    move v3, v4

    goto/16 :goto_3

    :cond_16
    move-object v0, v3

    move v4, v2

    goto/16 :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 3846
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3847
    invoke-virtual {p0}, Landroid/support/v7/widget/bv;->c()V

    .line 3848
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 3856
    iput p1, p0, Landroid/support/v7/widget/bv;->f:I

    .line 3858
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 3859
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bv;->d(I)V

    .line 3858
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3861
    :cond_0
    return-void
.end method

.method a(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 4526
    if-ge p1, p2, :cond_1

    .line 4529
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    .line 4535
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 4536
    :goto_1
    if-ge v4, v6, :cond_4

    .line 4537
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4538
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/support/v7/widget/ce;->b:I

    if-lt v7, v3, :cond_0

    iget v7, v0, Landroid/support/v7/widget/ce;->b:I

    if-le v7, v2, :cond_2

    .line 4536
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 4533
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    goto :goto_0

    .line 4541
    :cond_2
    iget v7, v0, Landroid/support/v7/widget/ce;->b:I

    if-ne v7, p1, :cond_3

    .line 4542
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Landroid/support/v7/widget/ce;->a(IZ)V

    goto :goto_2

    .line 4544
    :cond_3
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/ce;->a(IZ)V

    goto :goto_2

    .line 4551
    :cond_4
    return-void
.end method

.method a(Landroid/support/v7/widget/bi;Landroid/support/v7/widget/bi;Z)V
    .locals 1

    .prologue
    .line 4520
    invoke-virtual {p0}, Landroid/support/v7/widget/bv;->a()V

    .line 4521
    invoke-virtual {p0}, Landroid/support/v7/widget/bv;->f()Landroid/support/v7/widget/bu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/bu;->a(Landroid/support/v7/widget/bi;Landroid/support/v7/widget/bi;Z)V

    .line 4522
    return-void
.end method

.method a(Landroid/support/v7/widget/bu;)V
    .locals 2

    .prologue
    .line 4600
    iget-object v0, p0, Landroid/support/v7/widget/bv;->g:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_0

    .line 4601
    iget-object v0, p0, Landroid/support/v7/widget/bv;->g:Landroid/support/v7/widget/bu;

    invoke-virtual {v0}, Landroid/support/v7/widget/bu;->b()V

    .line 4603
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/bv;->g:Landroid/support/v7/widget/bu;

    .line 4604
    if-eqz p1, :cond_1

    .line 4605
    iget-object v0, p0, Landroid/support/v7/widget/bv;->g:Landroid/support/v7/widget/bu;

    iget-object v1, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bu;->a(Landroid/support/v7/widget/bi;)V

    .line 4607
    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/widget/cc;)V
    .locals 0

    .prologue
    .line 4596
    iput-object p1, p0, Landroid/support/v7/widget/bv;->h:Landroid/support/v7/widget/cc;

    .line 4597
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 4184
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 4185
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4186
    iget-object v1, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4188
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4189
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->h()V

    .line 4193
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bv;->b(Landroid/support/v7/widget/ce;)V

    .line 4194
    return-void

    .line 4190
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4191
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->j()V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/ce;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3883
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3900
    :cond_0
    :goto_0
    return v0

    .line 3886
    :cond_1
    iget v2, p1, Landroid/support/v7/widget/ce;->b:I

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/support/v7/widget/ce;->b:I

    iget-object v3, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/bi;->a()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 3887
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3890
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3892
    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v2

    iget v3, p1, Landroid/support/v7/widget/ce;->b:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/bi;->a(I)I

    move-result v2

    .line 3893
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->f()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 3894
    goto :goto_0

    .line 3897
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/bi;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3898
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->e()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v4

    iget v5, p1, Landroid/support/v7/widget/ce;->b:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/bi;->b(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(I)I
    .locals 3

    .prologue
    .line 3974
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3975
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v2}, Landroid/support/v7/widget/cb;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3978
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3981
    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(I)I

    move-result p1

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ce;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3869
    iget-object v0, p0, Landroid/support/v7/widget/bv;->e:Ljava/util/List;

    return-object v0
.end method

.method b(II)V
    .locals 4

    .prologue
    .line 4554
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4555
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4556
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4557
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 4562
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroid/support/v7/widget/ce;->a(IZ)V

    .line 4555
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4565
    :cond_1
    return-void
.end method

.method b(IIZ)V
    .locals 4

    .prologue
    .line 4574
    add-int v2, p1, p2

    .line 4575
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4576
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 4577
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4578
    if-eqz v0, :cond_0

    .line 4579
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 4585
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/support/v7/widget/ce;->a(IZ)V

    .line 4576
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4586
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 4588
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ce;->a(I)V

    .line 4589
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bv;->d(I)V

    goto :goto_1

    .line 4593
    :cond_2
    return-void
.end method

.method b(Landroid/support/v7/widget/ce;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4242
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4243
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->g()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 4249
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4254
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4259
    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/ce;->a(Landroid/support/v7/widget/ce;)Z

    move-result v3

    .line 4261
    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/bi;->b(Landroid/support/v7/widget/ce;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 4266
    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->t()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4267
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->l()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->p()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->n()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4269
    iget-object v2, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4270
    iget v4, p0, Landroid/support/v7/widget/bv;->f:I

    if-ne v2, v4, :cond_6

    if-lez v2, :cond_6

    .line 4271
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bv;->d(I)V

    .line 4273
    :cond_6
    iget v4, p0, Landroid/support/v7/widget/bv;->f:I

    if-ge v2, v4, :cond_a

    .line 4274
    iget-object v2, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    .line 4278
    :goto_2
    if-nez v2, :cond_9

    .line 4279
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bv;->c(Landroid/support/v7/widget/ce;)V

    move v1, v0

    move v0, v2

    .line 4288
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/ce;)V

    .line 4289
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 4290
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/ce;->i:Landroid/support/v7/widget/RecyclerView;

    .line 4292
    :cond_7
    return-void

    :cond_8
    move v2, v1

    .line 4261
    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4307
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 4308
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ce;->a(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/bv;)Landroid/support/v7/widget/bv;

    .line 4309
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->j()V

    .line 4310
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bv;->b(Landroid/support/v7/widget/ce;)V

    .line 4311
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 3999
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/bv;->a(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 4206
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4207
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4208
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bv;->d(I)V

    .line 4207
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4210
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4211
    return-void
.end method

.method c(II)V
    .locals 5

    .prologue
    .line 4617
    add-int v2, p1, p2

    .line 4618
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4619
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 4620
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4621
    if-nez v0, :cond_1

    .line 4619
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4625
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v4

    .line 4626
    if-lt v4, p1, :cond_0

    if-ge v4, v2, :cond_0

    .line 4627
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ce;->a(I)V

    goto :goto_1

    .line 4632
    :cond_2
    return-void
.end method

.method c(Landroid/support/v7/widget/ce;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4295
    iget-object v0, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 4296
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bv;->e(Landroid/support/v7/widget/ce;)V

    .line 4297
    iput-object v1, p1, Landroid/support/v7/widget/ce;->i:Landroid/support/v7/widget/RecyclerView;

    .line 4298
    invoke-virtual {p0}, Landroid/support/v7/widget/bv;->f()Landroid/support/v7/widget/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bu;->a(Landroid/support/v7/widget/ce;)V

    .line 4299
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4323
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 4324
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ce;->a(Landroid/support/v7/widget/bv;)V

    .line 4325
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4326
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/bi;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4331
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4338
    :goto_0
    return-void

    .line 4333
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 4334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    .line 4336
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method d()I
    .locals 1

    .prologue
    .line 4357
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method d(I)V
    .locals 1

    .prologue
    .line 4228
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4232
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bv;->c(Landroid/support/v7/widget/ce;)V

    .line 4233
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4234
    return-void
.end method

.method d(Landroid/support/v7/widget/ce;)V
    .locals 1

    .prologue
    .line 4347
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4348
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4352
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/ce;->a(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/bv;)Landroid/support/v7/widget/bv;

    .line 4353
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->j()V

    .line 4354
    return-void

    .line 4350
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method e(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 4361
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    return-object v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 4365
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4366
    return-void
.end method

.method e(Landroid/support/v7/widget/ce;)V
    .locals 1

    .prologue
    .line 4506
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4507
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bw;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bw;->a(Landroid/support/v7/widget/ce;)V

    .line 4509
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4510
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bi;->a(Landroid/support/v7/widget/ce;)V

    .line 4512
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    if-eqz v0, :cond_2

    .line 4513
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/ce;)V

    .line 4516
    :cond_2
    return-void
.end method

.method f()Landroid/support/v7/widget/bu;
    .locals 1

    .prologue
    .line 4610
    iget-object v0, p0, Landroid/support/v7/widget/bv;->g:Landroid/support/v7/widget/bu;

    if-nez v0, :cond_0

    .line 4611
    new-instance v0, Landroid/support/v7/widget/bu;

    invoke-direct {v0}, Landroid/support/v7/widget/bu;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bv;->g:Landroid/support/v7/widget/bu;

    .line 4613
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bv;->g:Landroid/support/v7/widget/bu;

    return-object v0
.end method

.method f(I)Landroid/support/v7/widget/ce;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 4371
    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 4396
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 4375
    :goto_1
    if-ge v3, v4, :cond_3

    .line 4376
    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4377
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->i()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 4378
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ce;->a(I)V

    goto :goto_0

    .line 4375
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 4383
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4384
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(I)I

    move-result v0

    .line 4385
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/bi;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 4386
    iget-object v3, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bi;->b(I)J

    move-result-wide v6

    .line 4387
    :goto_2
    if-ge v2, v4, :cond_5

    .line 4388
    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4389
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->i()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->e()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 4390
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ce;->a(I)V

    goto :goto_0

    .line 4387
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 4396
    goto :goto_0
.end method

.method g()V
    .locals 4

    .prologue
    .line 4635
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4636
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4637
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4638
    if-eqz v0, :cond_0

    .line 4639
    const/16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ce;->a(I)V

    .line 4636
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4642
    :cond_1
    return-void
.end method

.method h()V
    .locals 4

    .prologue
    .line 4645
    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4646
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4647
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 4648
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4649
    if-eqz v0, :cond_0

    .line 4650
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ce;->a(I)V

    .line 4647
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4655
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bv;->c()V

    .line 4657
    :cond_2
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4660
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 4661
    :goto_0
    if-ge v2, v3, :cond_0

    .line 4662
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4663
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->a()V

    .line 4661
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 4665
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 4666
    :goto_1
    if-ge v2, v3, :cond_1

    .line 4667
    iget-object v0, p0, Landroid/support/v7/widget/bv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->a()V

    .line 4666
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 4669
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 4670
    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4671
    :goto_2
    if-ge v1, v2, :cond_2

    .line 4672
    iget-object v0, p0, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->a()V

    .line 4671
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 4675
    :cond_2
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    .line 4678
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4679
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4680
    iget-object v0, p0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 4681
    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 4682
    if-eqz v0, :cond_0

    .line 4683
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 4679
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4686
    :cond_1
    return-void
.end method
