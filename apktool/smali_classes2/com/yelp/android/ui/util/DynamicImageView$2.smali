.class Lcom/yelp/android/ui/util/DynamicImageView$2;
.super Landroid/support/v7/widget/RecyclerView$c;
.source "DynamicImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/DynamicImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/DynamicImageView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/DynamicImageView;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/ui/util/DynamicImageView$2;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView$2;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/DynamicImageView$2;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/util/DynamicImageView;->b(Lcom/yelp/android/ui/util/DynamicImageView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/DynamicImageView;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
