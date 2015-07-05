.class Lcom/yelp/android/ui/util/v;
.super Landroid/support/v7/widget/bk;
.source "DynamicImageView.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/DynamicImageView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/DynamicImageView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/ui/util/v;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-direct {p0}, Landroid/support/v7/widget/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/util/v;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/v;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/util/DynamicImageView;->b(Lcom/yelp/android/ui/util/DynamicImageView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/DynamicImageView;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method
