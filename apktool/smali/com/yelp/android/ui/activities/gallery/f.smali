.class Lcom/yelp/android/ui/activities/gallery/f;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/f;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    const v0, 0x7f070666

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 436
    return-void
.end method
