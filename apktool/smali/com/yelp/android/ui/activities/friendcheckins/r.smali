.class public final Lcom/yelp/android/ui/activities/friendcheckins/r;
.super Ljava/lang/Object;
.source "OnClickPendingResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yelp/android/ui/widgets/j;


# instance fields
.field final a:Landroid/app/PendingIntent;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/r;->a:Landroid/app/PendingIntent;

    .line 43
    iput-object p2, p0, Lcom/yelp/android/ui/activities/friendcheckins/r;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/yelp/android/ui/activities/friendcheckins/r;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    return-object v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CheckableView:",
            "Landroid/view/View;",
            ":",
            "Landroid/widget/Checkable;",
            ">(TCheckableView;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/r;->a(Landroid/view/View;)Landroid/content/Intent;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/r;->c:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/r;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/r;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/r;->a(Landroid/view/View;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method
