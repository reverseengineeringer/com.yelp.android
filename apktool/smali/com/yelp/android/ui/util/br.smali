.class public Lcom/yelp/android/ui/util/br;
.super Ljava/lang/Object;
.source "ScrollingPhotoClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Landroid/app/PendingIntent;

.field final b:Z

.field public c:Lcom/yelp/android/ui/util/w;

.field public d:Lcom/yelp/android/ui/util/bc;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;ZLcom/yelp/android/ui/util/bc;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/util/br;->a:Landroid/app/PendingIntent;

    .line 28
    iput-boolean p2, p0, Lcom/yelp/android/ui/util/br;->b:Z

    .line 29
    iput-object p3, p0, Lcom/yelp/android/ui/util/br;->d:Lcom/yelp/android/ui/util/bc;

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/util/br;->c:Lcom/yelp/android/ui/util/w;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/util/br;->c:Lcom/yelp/android/ui/util/w;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/w;->a()V

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/yelp/android/ui/util/br;->a:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 40
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 41
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 42
    const-string/jumbo v2, "extra.media_index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    sget-object v0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/yelp/android/ui/util/br;->b:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/br;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/yelp/android/ui/util/br;->d:Lcom/yelp/android/ui/util/bc;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/bc;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method
