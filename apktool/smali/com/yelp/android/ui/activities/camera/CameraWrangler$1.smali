.class Lcom/yelp/android/ui/activities/camera/CameraWrangler$1;
.super Ljava/lang/Object;
.source "CameraWrangler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/camera/CameraWrangler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/a;

    .line 213
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/activities/camera/a;->b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    .line 216
    return-void
.end method
