.class Lcom/yelp/android/ui/widgets/e$1;
.super Ljava/lang/Object;
.source "ParallaxListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/e;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/e;->b(Lcom/yelp/android/ui/widgets/e;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/e;->a(Lcom/yelp/android/ui/widgets/e;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/e;->c(Lcom/yelp/android/ui/widgets/e;)I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/e;->a(Lcom/yelp/android/ui/widgets/e;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/e;->a(Lcom/yelp/android/ui/widgets/e;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/e;->a(Lcom/yelp/android/ui/widgets/e;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/e;->a(Lcom/yelp/android/ui/widgets/e;I)I

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/e;->b(Lcom/yelp/android/ui/widgets/e;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/e$1;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/e;->a(Lcom/yelp/android/ui/widgets/e;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 72
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
