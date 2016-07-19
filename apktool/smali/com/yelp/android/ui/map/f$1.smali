.class Lcom/yelp/android/ui/map/f$1;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/map/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/map/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/f;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yelp/android/ui/map/f$1;->a:Lcom/yelp/android/ui/map/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/map/f$1;->a:Lcom/yelp/android/ui/map/f;

    invoke-static {v0}, Lcom/yelp/android/ui/map/f;->a(Lcom/yelp/android/ui/map/f;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/map/f$1;->a:Lcom/yelp/android/ui/map/f;

    invoke-static {v0}, Lcom/yelp/android/ui/map/f;->b(Lcom/yelp/android/ui/map/f;)V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/map/f$1;->a:Lcom/yelp/android/ui/map/f;

    invoke-static {v0}, Lcom/yelp/android/ui/map/f;->c(Lcom/yelp/android/ui/map/f;)Lcom/yelp/android/ui/map/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/map/f$a;->a()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/f$1;->a:Lcom/yelp/android/ui/map/f;

    invoke-static {v0}, Lcom/yelp/android/ui/map/f;->d(Lcom/yelp/android/ui/map/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
