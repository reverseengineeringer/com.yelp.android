.class Lcom/yelp/android/ui/view/dino/ChefCarmenView$1;
.super Ljava/lang/Object;
.source "ChefCarmenView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/view/dino/ChefCarmenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/view/dino/ChefCarmenView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/view/dino/ChefCarmenView;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView$1;->a:Lcom/yelp/android/ui/view/dino/ChefCarmenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView$1;->a:Lcom/yelp/android/ui/view/dino/ChefCarmenView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->invalidate()V

    .line 361
    return-void
.end method
