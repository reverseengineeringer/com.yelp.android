.class public abstract Lcom/yelp/android/services/push/r;
.super Lcom/yelp/android/services/push/DefaultPushNotificationHandler;
.source "PushNotificationWithImageHandler.java"


# instance fields
.field private c:Lcom/yelp/android/services/push/p;

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/yelp/android/services/push/n;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 68
    iput-object p1, p0, Lcom/yelp/android/services/push/r;->d:Landroid/graphics/Bitmap;

    .line 69
    iget-object v0, p0, Lcom/yelp/android/services/push/r;->c:Lcom/yelp/android/services/push/p;

    invoke-virtual {v0}, Lcom/yelp/android/services/push/p;->c()Ljava/lang/String;

    move-result-object v1

    .line 70
    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->SINGLE:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/services/push/r;->a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 74
    iget-object v0, p0, Lcom/yelp/android/services/push/r;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    const/4 v3, 0x0

    const/16 v6, 0x18

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/services/push/r;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/yelp/android/services/push/r;->e:Lcom/yelp/android/services/push/n;

    new-instance v2, Lcom/yelp/android/services/push/m;

    invoke-virtual {p0}, Lcom/yelp/android/services/push/r;->a()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/services/push/r;->c:Lcom/yelp/android/services/push/p;

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/services/push/m;-><init>(ILcom/yelp/android/services/push/p;Landroid/app/Notification;)V

    invoke-interface {v1, v2}, Lcom/yelp/android/services/push/n;->a(Lcom/yelp/android/services/push/m;)V

    .line 80
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, v4, v1}, Lcom/yelp/android/services/push/r;->a(Lcom/yelp/android/services/push/m;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Style;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/services/push/r;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/services/push/r;->e()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/services/push/r;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/r;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/services/push/r;->c:Lcom/yelp/android/services/push/p;

    iget-object v1, p0, Lcom/yelp/android/services/push/r;->e:Lcom/yelp/android/services/push/n;

    invoke-super {p0, v0, v1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/p;Lcom/yelp/android/services/push/n;)V

    .line 84
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yelp/android/services/push/m;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/m;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/yelp/android/services/push/m;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Style;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/services/push/r;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/m;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Style;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 62
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 63
    iget-object v1, p0, Lcom/yelp/android/services/push/r;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/services/push/p;Lcom/yelp/android/services/push/n;)V
    .locals 2

    .prologue
    .line 51
    iput-object p2, p0, Lcom/yelp/android/services/push/r;->e:Lcom/yelp/android/services/push/n;

    .line 52
    iput-object p1, p0, Lcom/yelp/android/services/push/r;->c:Lcom/yelp/android/services/push/p;

    .line 53
    new-instance v0, Lcom/yelp/android/services/push/s;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/s;-><init>(Lcom/yelp/android/services/push/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method
