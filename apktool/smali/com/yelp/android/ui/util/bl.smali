.class Lcom/yelp/android/ui/util/bl;
.super Ljava/lang/Object;
.source "ScrollToLoadListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/ui/util/ScrollToLoadListView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/yelp/android/ui/util/bl;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-boolean p2, p0, Lcom/yelp/android/ui/util/bl;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bl;->a:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/util/bl;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->smoothScrollToPosition(I)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/bl;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    goto :goto_0
.end method
