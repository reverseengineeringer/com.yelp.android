.class Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;
.super Landroid/os/AsyncTask;
.source "CameraWrangler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/camera/CameraWrangler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Z)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 631
    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->b:Z

    .line 632
    return-void
.end method


# virtual methods
.method protected varargs a([[B)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 637
    const/4 v2, 0x0

    .line 640
    :try_start_0
    array-length v1, p1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 641
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "PhotoFlushTask expects one image only."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 652
    :goto_0
    :try_start_1
    const-string/jumbo v4, "Out of memory, could not save image"

    invoke-static {p0, v4, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 658
    if-eqz v3, :cond_0

    .line 660
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 662
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->b:Z

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 665
    :cond_0
    :goto_1
    return-object v0

    .line 643
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/yelp/android/util/e;->c()Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 644
    if-nez v1, :cond_2

    .line 658
    if-eqz v0, :cond_0

    .line 660
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 662
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->b:Z

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 663
    :catch_1
    move-exception v1

    .line 664
    const-string/jumbo v2, "Could not close output image file"

    invoke-static {p0, v2, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 647
    :cond_2
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 648
    const/4 v2, 0x0

    :try_start_6
    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 649
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 658
    if-eqz v3, :cond_3

    .line 660
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 662
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->b:Z

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a(Ljava/lang/String;Z)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_2
    move-object v0, v1

    .line 665
    goto :goto_1

    .line 663
    :catch_2
    move-exception v0

    .line 664
    const-string/jumbo v2, "Could not close output image file"

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 663
    :catch_3
    move-exception v1

    .line 664
    const-string/jumbo v2, "Could not close output image file"

    invoke-static {p0, v2, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 654
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 655
    :goto_3
    :try_start_8
    const-string/jumbo v4, "Could not save image"

    invoke-static {p0, v4, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 658
    if-eqz v3, :cond_0

    .line 660
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 662
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->b:Z

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 663
    :catch_5
    move-exception v1

    .line 664
    const-string/jumbo v2, "Could not close output image file"

    invoke-static {p0, v2, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 658
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4
    if-eqz v3, :cond_4

    .line 660
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 662
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->b:Z

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a(Ljava/lang/String;Z)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 665
    :cond_4
    :goto_5
    throw v0

    .line 663
    :catch_6
    move-exception v1

    .line 664
    const-string/jumbo v2, "Could not close output image file"

    invoke-static {p0, v2, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 658
    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 654
    :catch_7
    move-exception v2

    move-object v3, v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_3

    :catch_8
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_3

    .line 651
    :catch_9
    move-exception v2

    move-object v3, v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto/16 :goto_0

    :catch_a
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_0
.end method

.method protected a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

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

    .line 673
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-interface {v0, v2, p1}, Lcom/yelp/android/ui/activities/camera/a;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Ljava/io/File;)V

    goto :goto_0

    .line 675
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Z)Z

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Z)Z

    .line 680
    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 693
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 694
    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 696
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 697
    if-eqz v3, :cond_0

    if-ne v3, v0, :cond_1

    .line 699
    :cond_0
    const/4 v2, 0x2

    .line 708
    :goto_0
    if-eq v3, v2, :cond_4

    .line 709
    const-string/jumbo v3, "Orientation"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :goto_1
    return v0

    .line 700
    :cond_1
    const/4 v2, 0x3

    if-ne v3, v2, :cond_2

    .line 701
    const/4 v2, 0x4

    goto :goto_0

    .line 702
    :cond_2
    const/4 v2, 0x6

    if-ne v3, v2, :cond_3

    .line 703
    const/4 v2, 0x5

    goto :goto_0

    .line 704
    :cond_3
    const/16 v2, 0x8

    if-ne v3, v2, :cond_5

    .line 705
    const/4 v2, 0x7

    goto :goto_0

    :cond_4
    move v0, v1

    .line 713
    goto :goto_1

    .line 715
    :catch_0
    move-exception v0

    .line 716
    const-string/jumbo v2, "Couldn\'t modify picture orientation tag"

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 717
    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 622
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a([[B)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 622
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->a(Ljava/io/File;)V

    return-void
.end method
