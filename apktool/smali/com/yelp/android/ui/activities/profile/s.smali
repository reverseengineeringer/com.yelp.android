.class public final Lcom/yelp/android/ui/activities/profile/s;
.super Landroid/widget/BaseAdapter;
.source "SpannableWidgetAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lcom/yelp/android/ui/util/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/ListAdapter;",
        "Lcom/yelp/android/ui/util/j;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/util/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/au",
            "<TType;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/au;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/au",
            "<TType;>;III)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    .line 40
    iput p3, p0, Lcom/yelp/android/ui/activities/profile/s;->c:I

    .line 41
    iput p4, p0, Lcom/yelp/android/ui/activities/profile/s;->d:I

    .line 42
    iput p2, p0, Lcom/yelp/android/ui/activities/profile/s;->b:I

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    new-instance v1, Lcom/yelp/android/ui/util/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/b;-><init>(Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/au;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 45
    return-void
.end method

.method private final a(I)Z
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/s;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(I)Z
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/s;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c(I)I
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 139
    :cond_0
    sub-int v0, p1, v0

    return v0
.end method

.method private final c()Z
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/s;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/util/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/util/au",
            "<TType;>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/au;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/au;->clear()V

    .line 163
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/au;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TType;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const-wide/16 v0, 0x0

    .line 178
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/au;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/s;->e:I

    .line 89
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/s;->f:I

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/au;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v5, v3

    .line 50
    :goto_0
    if-eqz v5, :cond_3

    .line 51
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {}, Lcom/yelp/android/ui/util/cp;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/s;->d:I

    .line 57
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 58
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/s;->c:I

    move v2, v0

    move v0, v1

    .line 61
    :goto_1
    invoke-virtual {v4, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 67
    :goto_2
    if-nez v5, :cond_1

    .line 68
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->c(I)I

    move-result v5

    .line 69
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/s;->b:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 70
    if-nez v5, :cond_4

    move v2, v3

    :goto_3
    invoke-interface {v0, v2}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setLeft(Z)V

    .line 71
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_5

    move v2, v3

    :goto_4
    invoke-interface {v0, v2}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setRight(Z)V

    .line 72
    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v5, v2, :cond_6

    :goto_5
    invoke-interface {v0, v3}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setMiddle(Z)V

    .line 73
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 76
    :cond_1
    return-object v4

    :cond_2
    move v5, v1

    .line 49
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->c(I)I

    move-result v2

    invoke-virtual {v0, v2, p2, p3}, Lcom/yelp/android/ui/util/au;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_4
    move v2, v1

    .line 70
    goto :goto_3

    :cond_5
    move v2, v1

    .line 71
    goto :goto_4

    :cond_6
    move v3, v1

    .line 72
    goto :goto_5

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/au;->getViewTypeCount()I

    move-result v0

    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iput v0, p0, Lcom/yelp/android/ui/activities/profile/s;->e:I

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/s;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iput v0, p0, Lcom/yelp/android/ui/activities/profile/s;->f:I

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/au;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/s;->a:Lcom/yelp/android/ui/util/au;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/s;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/au;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
