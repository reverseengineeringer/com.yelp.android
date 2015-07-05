.class Lcom/yelp/android/ui/util/u;
.super Ljava/lang/Object;
.source "DynamicImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/DynamicImageView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/DynamicImageView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yelp/android/ui/util/u;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/util/u;->a:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/DynamicImageView;->a(Lcom/yelp/android/ui/util/DynamicImageView;)V

    .line 104
    return-void
.end method
