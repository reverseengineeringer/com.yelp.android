.class public Lcom/yelp/android/ui/activities/videotrim/l;
.super Ljava/lang/Object;
.source "Snapshot.java"


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FFF)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/l;->a:Landroid/graphics/Bitmap;

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/l;->b:Landroid/graphics/Matrix;

    .line 18
    invoke-virtual {p0, p2, p3, p4}, Lcom/yelp/android/ui/activities/videotrim/l;->a(FFF)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/l;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(FFF)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/l;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/l;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p3, v0

    .line 24
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/l;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/l;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 26
    return-void
.end method

.method public b()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/l;->b:Landroid/graphics/Matrix;

    return-object v0
.end method
