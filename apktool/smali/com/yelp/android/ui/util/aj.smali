.class final Lcom/yelp/android/ui/util/aj;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/util/al;


# instance fields
.field private final a:Lcom/yelp/android/ui/util/al;

.field private final b:Lcom/yelp/android/ui/util/ImageInputHelper;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/ImageInputHelper;Lcom/yelp/android/ui/util/al;)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj;->b:Lcom/yelp/android/ui/util/ImageInputHelper;

    .line 665
    iput-object p2, p0, Lcom/yelp/android/ui/util/aj;->a:Lcom/yelp/android/ui/util/al;

    .line 666
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->a:Lcom/yelp/android/ui/util/al;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/util/al;->a(Ljava/io/File;)V

    .line 681
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 684
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 2

    .prologue
    .line 670
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->a:Lcom/yelp/android/ui/util/al;

    invoke-interface {v1, p1, p2, p3}, Lcom/yelp/android/ui/util/al;->a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->b:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->b:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/util/Pair;)Landroid/util/Pair;

    .line 675
    const/4 v0, 0x1

    return v0
.end method
