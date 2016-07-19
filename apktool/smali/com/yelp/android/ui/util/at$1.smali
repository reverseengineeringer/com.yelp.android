.class final Lcom/yelp/android/ui/util/at$1;
.super Ljava/lang/Object;
.source "ViewSizer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/at;->a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/util/at$a;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/ui/util/at$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/yelp/android/ui/util/at$1;->b:Lcom/yelp/android/ui/util/at$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/at$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/yelp/android/ui/util/at$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 24
    iget-object v2, p0, Lcom/yelp/android/ui/util/at$1;->b:Lcom/yelp/android/ui/util/at$a;

    iget-object v3, p0, Lcom/yelp/android/ui/util/at$1;->a:Landroid/view/View;

    invoke-interface {v2, v3, v0, v1}, Lcom/yelp/android/ui/util/at$a;->a(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const/4 v0, 0x1

    .line 28
    iget-object v1, p0, Lcom/yelp/android/ui/util/at$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/at$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    throw v0
.end method
