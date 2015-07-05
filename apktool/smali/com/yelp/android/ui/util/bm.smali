.class Lcom/yelp/android/ui/util/bm;
.super Ljava/lang/Object;
.source "ScrollToLoadListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ScrollToLoadListView;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/yelp/android/ui/util/bm;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/bk;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/bm;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/util/bm;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)Z

    .line 380
    return-void
.end method
