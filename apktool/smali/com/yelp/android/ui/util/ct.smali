.class final Lcom/yelp/android/ui/util/ct;
.super Ljava/lang/Object;
.source "ViewSizer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/util/cu;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/util/cu;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yelp/android/ui/util/ct;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/yelp/android/ui/util/ct;->b:Lcom/yelp/android/ui/util/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ct;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/yelp/android/ui/util/ct;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 22
    iget-object v2, p0, Lcom/yelp/android/ui/util/ct;->b:Lcom/yelp/android/ui/util/cu;

    iget-object v3, p0, Lcom/yelp/android/ui/util/ct;->a:Landroid/view/View;

    invoke-interface {v2, v3, v0, v1}, Lcom/yelp/android/ui/util/cu;->a(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v0, 0x1

    .line 26
    iget-object v1, p0, Lcom/yelp/android/ui/util/ct;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/ct;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    throw v0
.end method
