.class final Lcom/yelp/android/ui/util/ImageInputHelper$a;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/util/ImageInputHelper$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ImageInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/util/ImageInputHelper$c;

.field private final b:Lcom/yelp/android/ui/util/ImageInputHelper;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/ImageInputHelper;Lcom/yelp/android/ui/util/ImageInputHelper$c;)V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageInputHelper$a;->b:Lcom/yelp/android/ui/util/ImageInputHelper;

    .line 696
    iput-object p2, p0, Lcom/yelp/android/ui/util/ImageInputHelper$a;->a:Lcom/yelp/android/ui/util/ImageInputHelper$c;

    .line 697
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$a;->a:Lcom/yelp/android/ui/util/ImageInputHelper$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper$c;->a(Ljava/io/File;)V

    .line 712
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 715
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 2

    .prologue
    .line 701
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper$a;->a:Lcom/yelp/android/ui/util/ImageInputHelper$c;

    invoke-interface {v1, p1, p2, p3}, Lcom/yelp/android/ui/util/ImageInputHelper$c;->a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper$a;->b:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper$a;->b:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/util/Pair;)Landroid/util/Pair;

    .line 706
    const/4 v0, 0x1

    return v0
.end method
