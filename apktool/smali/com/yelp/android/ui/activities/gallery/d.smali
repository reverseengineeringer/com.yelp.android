.class Lcom/yelp/android/ui/activities/gallery/d;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Lcom/yelp/android/appdata/r;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/yelp/android/ui/activities/gallery/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/c;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/d;->b:Lcom/yelp/android/ui/activities/gallery/c;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/d;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/d;->b:Lcom/yelp/android/ui/activities/gallery/c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/d;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/d;->b:Lcom/yelp/android/ui/activities/gallery/c;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/l;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/d;->b:Lcom/yelp/android/ui/activities/gallery/c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    goto :goto_0
.end method
