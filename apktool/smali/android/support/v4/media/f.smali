.class public final Landroid/support/v4/media/f;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/f;->a:Landroid/os/Bundle;

    .line 573
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 3

    .prologue
    .line 742
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v1, p0, Landroid/support/v4/media/f;->a:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;Landroid/support/v4/media/e;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Landroid/support/v4/media/f;
    .locals 4

    .prologue
    .line 677
    # getter for: Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lcom/yelp/android/e/a;
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Lcom/yelp/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    # getter for: Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lcom/yelp/android/e/a;
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Lcom/yelp/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key cannot be used to put a long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/f;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 684
    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/f;
    .locals 3

    .prologue
    .line 726
    # getter for: Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lcom/yelp/android/e/a;
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Lcom/yelp/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    # getter for: Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lcom/yelp/android/e/a;
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Lcom/yelp/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key cannot be used to put a Bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/f;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 733
    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/f;
    .locals 3

    .prologue
    .line 701
    # getter for: Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lcom/yelp/android/e/a;
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Lcom/yelp/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    # getter for: Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lcom/yelp/android/e/a;
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Lcom/yelp/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 703
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key cannot be used to put a Rating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/f;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 708
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/f;
    .locals 3

    .prologue
    .line 613
    # getter for: Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lcom/yelp/android/e/a;
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Lcom/yelp/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    # getter for: Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lcom/yelp/android/e/a;
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Lcom/yelp/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key cannot be used to put a CharSequence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/f;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 620
    return-object p0
.end method
