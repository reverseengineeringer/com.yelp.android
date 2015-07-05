.class Lcom/yelp/android/ui/activities/camera/n;
.super Ljava/lang/Object;
.source "TakePhoto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/TakePhoto;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/n;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/n;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e()Ljava/util/EnumSet;

    move-result-object v1

    .line 192
    sget-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->TORCH:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/n;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->g()Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v2

    .line 194
    invoke-static {}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->values()[Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v3

    .line 195
    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->ordinal()I

    move-result v0

    const/4 v4, 0x1

    array-length v5, v3

    rem-int/2addr v4, v5

    add-int/2addr v0, v4

    :goto_0
    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->ordinal()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 197
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/n;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f()Lcom/yelp/android/ui/activities/camera/b;

    move-result-object v1

    aget-object v2, v3, v0

    invoke-interface {v1, v2}, Lcom/yelp/android/ui/activities/camera/b;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;)Lcom/yelp/android/ui/activities/camera/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/camera/b;->a()V

    .line 199
    check-cast p1, Landroid/widget/ImageView;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 203
    :cond_0
    return-void

    .line 195
    :cond_1
    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    rem-int/2addr v0, v4

    goto :goto_0
.end method
