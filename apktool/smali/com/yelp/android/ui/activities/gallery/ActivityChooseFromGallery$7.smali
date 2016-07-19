.class Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Lcom/yelp/android/appdata/Features$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 683
    if-eqz p1, :cond_0

    .line 684
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;)V

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;)V

    goto :goto_0
.end method
