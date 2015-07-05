.class Lcom/yelp/android/az/d;
.super Ljava/lang/Object;
.source "FeedButtonWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/yelp/android/az/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/az/c;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yelp/android/az/d;->b:Lcom/yelp/android/az/c;

    iput-object p2, p0, Lcom/yelp/android/az/d;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/az/d;->b:Lcom/yelp/android/az/c;

    invoke-static {v0}, Lcom/yelp/android/az/c;->b(Lcom/yelp/android/az/c;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/az/d;->b:Lcom/yelp/android/az/c;

    invoke-static {v1}, Lcom/yelp/android/az/c;->a(Lcom/yelp/android/az/c;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    iget-object v0, p0, Lcom/yelp/android/az/d;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 45
    return-void
.end method
