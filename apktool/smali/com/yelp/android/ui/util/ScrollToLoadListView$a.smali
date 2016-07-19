.class Lcom/yelp/android/ui/util/ScrollToLoadListView$a;
.super Ljava/lang/Object;
.source "ScrollToLoadListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ScrollToLoadListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ScrollToLoadListView;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView$1;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 388
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)Z

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 379
    :cond_0
    return-void
.end method
