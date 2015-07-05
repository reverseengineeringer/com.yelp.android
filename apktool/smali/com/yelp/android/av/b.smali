.class Lcom/yelp/android/av/b;
.super Ljava/lang/Object;
.source "MetricsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/av/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/av/a;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/yelp/android/av/b;->a:Lcom/yelp/android/av/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yelp/android/av/b;->a:Lcom/yelp/android/av/a;

    invoke-static {v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/av/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    iget-object v0, p0, Lcom/yelp/android/av/b;->a:Lcom/yelp/android/av/a;

    invoke-virtual {v0}, Lcom/yelp/android/av/a;->b()V

    .line 299
    return-void
.end method
