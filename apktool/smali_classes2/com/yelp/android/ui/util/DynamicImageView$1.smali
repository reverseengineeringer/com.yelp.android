.class Lcom/yelp/android/ui/util/DynamicImageView$1;
.super Ljava/lang/Object;
.source "DynamicImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 103
    iput-object p1, p0, Lcom/yelp/android/ui/util/DynamicImageView$1;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView$1;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/DynamicImageView;->a(Lcom/yelp/android/ui/util/DynamicImageView;)V

    .line 107
    return-void
.end method
