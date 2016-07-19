.class public Lcom/yelp/android/ui/util/ImageInputHelper$d;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ImageInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/yelp/android/ui/util/ImageInputHelper;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 799
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageInputHelper$d;->b:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$d;->a:Ljava/lang/ref/WeakReference;

    .line 801
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 805
    instance-of v0, p2, Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 807
    :try_start_0
    check-cast p2, Landroid/app/PendingIntent;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 812
    const-string/jumbo v1, "ImageInputHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t send PendingIntent in ImageInputHelper because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :cond_1
    check-cast p2, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    .line 823
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    invoke-static {p2}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->a(Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 825
    invoke-static {p2}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->a(Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 827
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper$d;->b:Lcom/yelp/android/ui/util/ImageInputHelper;

    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p2}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->b(Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V

    goto :goto_0
.end method
