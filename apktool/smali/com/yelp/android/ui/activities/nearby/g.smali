.class Lcom/yelp/android/ui/activities/nearby/g;
.super Ljava/lang/Object;
.source "ComboListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e()I

    move-result v4

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v5

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getWidth()I

    move-result v6

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Lcom/yelp/android/ui/activities/nearby/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Lcom/yelp/android/ui/activities/nearby/h;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/activities/nearby/h;->b(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V

    .line 254
    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    move v3, v1

    move v0, v1

    .line 255
    :goto_0
    iget-object v7, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v7}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 256
    iget-object v7, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v7}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v8}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v8

    invoke-interface {v7, v0, v2, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 257
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/view/View;->measure(II)V

    .line 260
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    add-int v0, v3, v4

    if-le v0, v5, :cond_2

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v10, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :goto_1
    return-void

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e()I

    move-result v0

    add-int/2addr v0, v3

    sub-int v0, v5, v0

    .line 269
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/g;->a:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v10, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
