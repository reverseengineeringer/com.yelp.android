.class public abstract Lcom/yelp/android/services/push/i;
.super Lcom/yelp/android/services/push/DefaultPushNotificationHandler;
.source "PushNotificationWithImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/services/push/i$a;
    }
.end annotation


# instance fields
.field private c:Lcom/yelp/android/services/push/g;

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/yelp/android/services/push/Notifier$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 71
    iput-object p1, p0, Lcom/yelp/android/services/push/i;->d:Landroid/graphics/Bitmap;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/services/push/i;->c:Lcom/yelp/android/services/push/g;

    invoke-virtual {v0}, Lcom/yelp/android/services/push/g;->c()Ljava/lang/String;

    move-result-object v1

    .line 73
    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->SINGLE:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/services/push/i;->a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 77
    iget-object v0, p0, Lcom/yelp/android/services/push/i;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    const/4 v3, 0x0

    const/16 v6, 0x18

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/services/push/i;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/x$p;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/yelp/android/services/push/i;->e:Lcom/yelp/android/services/push/Notifier$b;

    new-instance v2, Lcom/yelp/android/services/push/Notifier$a;

    invoke-virtual {p0}, Lcom/yelp/android/services/push/i;->a()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/services/push/i;->c:Lcom/yelp/android/services/push/g;

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/services/push/Notifier$a;-><init>(ILcom/yelp/android/services/push/g;Landroid/app/Notification;)V

    invoke-interface {v1, v2}, Lcom/yelp/android/services/push/Notifier$b;->a(Lcom/yelp/android/services/push/Notifier$a;)V

    .line 88
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, v4, v1}, Lcom/yelp/android/services/push/i;->a(Lcom/yelp/android/services/push/Notifier$a;Ljava/lang/String;)Landroid/support/v4/app/x$p;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/services/push/i;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/services/push/i;->e()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/services/push/i;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/i;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/services/push/i;->c:Lcom/yelp/android/services/push/g;

    iget-object v1, p0, Lcom/yelp/android/services/push/i;->e:Lcom/yelp/android/services/push/Notifier$b;

    invoke-super {p0, v0, v1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V

    .line 92
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yelp/android/services/push/Notifier$a;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/Notifier$a;)Landroid/app/Notification;

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

.method protected a(Lcom/yelp/android/services/push/Notifier$a;Ljava/lang/String;)Landroid/support/v4/app/x$p;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/services/push/i;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/Notifier$a;Ljava/lang/String;)Landroid/support/v4/app/x$p;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Landroid/support/v4/app/x$b;

    invoke-direct {v0}, Landroid/support/v4/app/x$b;-><init>()V

    .line 65
    invoke-virtual {v0, p2}, Landroid/support/v4/app/x$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$b;

    .line 66
    iget-object v1, p0, Lcom/yelp/android/services/push/i;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/x$b;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/x$b;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V
    .locals 2

    .prologue
    .line 54
    iput-object p2, p0, Lcom/yelp/android/services/push/i;->e:Lcom/yelp/android/services/push/Notifier$b;

    .line 55
    iput-object p1, p0, Lcom/yelp/android/services/push/i;->c:Lcom/yelp/android/services/push/g;

    .line 56
    new-instance v0, Lcom/yelp/android/services/push/i$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/i$a;-><init>(Lcom/yelp/android/services/push/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/i$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method
