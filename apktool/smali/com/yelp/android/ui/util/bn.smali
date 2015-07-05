.class final Lcom/yelp/android/ui/util/bn;
.super Landroid/widget/BaseAdapter;
.source "ScrollToLoadListView.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/util/bk;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/yelp/android/ui/util/bn;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 420
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 430
    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    return v0
.end method
