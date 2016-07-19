.class Lcom/yelp/android/cg/d$1;
.super Ljava/lang/Object;
.source "FeedButtonWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cg/d;-><init>(Landroid/view/View;IIILandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/yelp/android/cg/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/cg/d;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/cg/d$1;->b:Lcom/yelp/android/cg/d;

    iput-object p2, p0, Lcom/yelp/android/cg/d$1;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/cg/d$1;->b:Lcom/yelp/android/cg/d;

    invoke-static {v0}, Lcom/yelp/android/cg/d;->b(Lcom/yelp/android/cg/d;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/cg/d$1;->b:Lcom/yelp/android/cg/d;

    invoke-static {v1}, Lcom/yelp/android/cg/d;->a(Lcom/yelp/android/cg/d;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/cg/d$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 56
    return-void
.end method
