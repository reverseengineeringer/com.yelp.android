.class Lcom/yelp/android/ui/util/ScrollToLoadListView$1;
.super Ljava/lang/Object;
.source "ScrollToLoadListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/ui/util/ScrollToLoadListView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-boolean p2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;->a:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->smoothScrollToPosition(I)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    goto :goto_0
.end method
