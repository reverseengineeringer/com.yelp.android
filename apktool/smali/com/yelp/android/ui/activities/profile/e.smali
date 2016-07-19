.class public final Lcom/yelp/android/ui/activities/profile/e;
.super Landroid/widget/BaseAdapter;
.source "SpannableWidgetAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lcom/yelp/android/ui/util/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/ListAdapter;",
        "Lcom/yelp/android/ui/util/g;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/util/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/w",
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
.method public constructor <init>(Lcom/yelp/android/ui/util/w;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/w",
            "<TType;>;III)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    .line 43
    iput p3, p0, Lcom/yelp/android/ui/activities/profile/e;->c:I

    .line 44
    iput p4, p0, Lcom/yelp/android/ui/activities/profile/e;->d:I

    .line 45
    iput p2, p0, Lcom/yelp/android/ui/activities/profile/e;->b:I

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    new-instance v1, Lcom/yelp/android/ui/util/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/b;-><init>(Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/w;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 48
    return-void
.end method

.method private final a(I)Z
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->b()Z

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
    .line 123
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/e;->c:I

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
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/e;->getCount()I

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
    .line 139
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :cond_0
    sub-int v0, p1, v0

    return v0
.end method

.method private final c()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/e;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/util/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/util/w",
            "<TType;>;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/w;->areAllItemsEnabled()Z

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
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/w;->clear()V

    .line 167
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    .line 113
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/w;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/w;->getCount()I

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
    .line 171
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    const-wide/16 v0, 0x0

    .line 182
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/w;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/e;->e:I

    .line 93
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/e;->f:I

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/w;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v5, v3

    .line 53
    :goto_0
    if-eqz v5, :cond_3

    .line 54
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {}, Lcom/yelp/android/ui/util/ar;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/e;->d:I

    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 61
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/e;->c:I

    move v2, v0

    move v0, v1

    .line 64
    :goto_1
    invoke-virtual {v4, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 70
    :goto_2
    if-nez v5, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->c(I)I

    move-result v5

    .line 72
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/e;->b:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 73
    if-nez v5, :cond_4

    move v2, v3

    :goto_3
    invoke-interface {v0, v2}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setLeft(Z)V

    .line 74
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_5

    move v2, v3

    :goto_4
    invoke-interface {v0, v2}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setRight(Z)V

    .line 75
    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v5, v2, :cond_6

    :goto_5
    invoke-interface {v0, v3}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setMiddle(Z)V

    .line 77
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 80
    :cond_1
    return-object v4

    :cond_2
    move v5, v1

    .line 52
    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->c(I)I

    move-result v2

    invoke-virtual {v0, v2, p2, p3}, Lcom/yelp/android/ui/util/w;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_4
    move v2, v1

    .line 73
    goto :goto_3

    :cond_5
    move v2, v1

    .line 74
    goto :goto_4

    :cond_6
    move v3, v1

    .line 75
    goto :goto_5

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/w;->getViewTypeCount()I

    move-result v0

    .line 99
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iput v0, p0, Lcom/yelp/android/ui/activities/profile/e;->e:I

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iput v0, p0, Lcom/yelp/android/ui/activities/profile/e;->f:I

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/w;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/util/w;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/e;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/w;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
