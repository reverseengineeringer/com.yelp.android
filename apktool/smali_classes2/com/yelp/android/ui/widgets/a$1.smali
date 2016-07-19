.class Lcom/yelp/android/ui/widgets/a$1;
.super Ljava/lang/Object;
.source "Darwin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/a;->a(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/yelp/android/ui/widgets/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/a;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/a$1;->b:Lcom/yelp/android/ui/widgets/a;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/a$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/a$1;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/a$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/a$1;->b:Lcom/yelp/android/ui/widgets/a;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/a;->a(Lcom/yelp/android/ui/widgets/a;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    return-void
.end method
