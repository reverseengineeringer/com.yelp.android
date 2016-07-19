.class Lcom/yelp/android/ui/ActivityMonocle$b;
.super Landroid/os/AsyncTask;
.source "ActivityMonocle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/ActivityMonocle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/hardware/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/ActivityMonocle;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/yelp/android/ui/ActivityMonocle$b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/ActivityMonocle$1;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/ActivityMonocle$b;-><init>(Lcom/yelp/android/ui/ActivityMonocle;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 377
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    const-string/jumbo v1, "Monocle"

    const-string/jumbo v2, "runtime exception while trying to normally acquire camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/hardware/Camera;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 389
    .line 390
    const-string/jumbo v3, "Monocle"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "We successfully acquired a camera? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-nez p1, :cond_4

    move v2, v1

    .line 397
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-static {v0}, Lcom/yelp/android/ui/ActivityMonocle;->c(Lcom/yelp/android/ui/ActivityMonocle;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-static {v0}, Lcom/yelp/android/ui/ActivityMonocle;->c(Lcom/yelp/android/ui/ActivityMonocle;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/ActivityMonocle;->a(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 402
    :cond_1
    const v0, 0x7f0703d3

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 403
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-virtual {v0}, Lcom/yelp/android/ui/ActivityMonocle;->finish()V

    .line 405
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 390
    goto :goto_0

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/ActivityMonocle;->a(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-static {v0}, Lcom/yelp/android/ui/ActivityMonocle;->b(Lcom/yelp/android/ui/ActivityMonocle;)Lcom/yelp/android/ui/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/j;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/ActivityMonocle$b;->a([Ljava/lang/Void;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 372
    check-cast p1, Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/ActivityMonocle$b;->a(Landroid/hardware/Camera;)V

    return-void
.end method
