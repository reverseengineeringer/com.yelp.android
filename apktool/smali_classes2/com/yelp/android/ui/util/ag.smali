.class public Lcom/yelp/android/ui/util/ag;
.super Ljava/lang/Object;
.source "ScrollingPhotoClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Landroid/app/PendingIntent;

.field final b:Z

.field public c:Lcom/yelp/android/ui/util/DynamicImageView$a;

.field public d:Lcom/yelp/android/ui/util/aa;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;ZLcom/yelp/android/ui/util/aa;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yelp/android/ui/util/ag;->a:Landroid/app/PendingIntent;

    .line 30
    iput-boolean p2, p0, Lcom/yelp/android/ui/util/ag;->b:Z

    .line 31
    iput-object p3, p0, Lcom/yelp/android/ui/util/ag;->d:Lcom/yelp/android/ui/util/aa;

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/util/ag;->c:Lcom/yelp/android/ui/util/DynamicImageView$a;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/util/ag;->c:Lcom/yelp/android/ui/util/DynamicImageView$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/DynamicImageView$a;->a()V

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/yelp/android/ui/util/ag;->a:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 42
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string/jumbo v2, "extra.media_index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    sget-object v0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/yelp/android/ui/util/ag;->b:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ag;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/yelp/android/ui/util/ag;->d:Lcom/yelp/android/ui/util/aa;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/aa;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method
