.class public Lcom/yelp/android/services/push/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/services/push/Notifier$2;,
        Lcom/yelp/android/services/push/Notifier$b;,
        Lcom/yelp/android/services/push/Notifier$a;,
        Lcom/yelp/android/services/push/Notifier$NotificationType;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/yelp/android/services/push/Notifier;->b:Landroid/app/NotificationManager;

    .line 106
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 284
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V

    .line 285
    invoke-static {p0, p2, p3}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;)Lcom/yelp/android/services/push/h;

    move-result-object v0

    .line 287
    invoke-interface {v0, p1, p3, p2, p4}, Lcom/yelp/android/services/push/h;->a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 256
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;I)I

    move-result v1

    if-le v1, v0, :cond_0

    .line 258
    :goto_0
    invoke-static {p0, p1, p3}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V

    .line 259
    invoke-static {p0, p1, p2}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;)Lcom/yelp/android/services/push/h;

    move-result-object v1

    .line 261
    invoke-interface {v1, p2, p1, v0}, Lcom/yelp/android/services/push/h;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    return-object v0

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;)Lcom/yelp/android/services/push/h;
    .locals 3

    .prologue
    .line 111
    sget-object v0, Lcom/yelp/android/services/push/Notifier$2;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    new-instance v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Using default handler on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 150
    :goto_1
    return-object v0

    .line 113
    :pswitch_0
    new-instance v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 116
    :pswitch_1
    new-instance v0, Lcom/yelp/android/services/push/f;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/services/push/f;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 119
    :pswitch_2
    new-instance v0, Lcom/yelp/android/services/push/l;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/services/push/l;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 122
    :pswitch_3
    new-instance v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;

    const v1, 0x7f070691

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 130
    :pswitch_4
    new-instance v0, Lcom/yelp/android/services/push/d;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/services/push/d;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 133
    :pswitch_5
    new-instance v0, Lcom/yelp/android/services/push/j;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/services/push/j;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 136
    :pswitch_6
    new-instance v0, Lcom/yelp/android/services/push/k;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/services/push/k;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 139
    :pswitch_7
    new-instance v0, Lcom/yelp/android/services/push/a;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/services/push/a;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 142
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Could not handle this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(Landroid/app/Notification;Lcom/yelp/android/services/push/Notifier$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 432
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    const v2, 0x7f0706f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 434
    iget-object v2, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    const v3, 0x7f070708

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 436
    if-eqz v1, :cond_0

    .line 437
    iget v1, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 441
    const v1, -0xff0100

    iput v1, p1, Landroid/app/Notification;->ledARGB:I

    .line 444
    const/16 v1, 0x3e8

    iput v1, p1, Landroid/app/Notification;->ledOnMS:I

    .line 445
    const/16 v1, 0x7d0

    iput v1, p1, Landroid/app/Notification;->ledOffMS:I

    .line 453
    const-string/jumbo v1, "LT26i"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    iget v1, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Landroid/app/Notification;->defaults:I

    .line 457
    :cond_0
    if-eqz v0, :cond_1

    .line 458
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier;->b:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Lcom/yelp/android/services/push/Notifier$a;->d()Lcom/yelp/android/services/push/Notifier$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/services/push/Notifier$a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 467
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 170
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 171
    invoke-static {}, Lcom/yelp/android/services/push/Notifier$NotificationType;->values()[Lcom/yelp/android/services/push/Notifier$NotificationType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 172
    invoke-static {p0, v3}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V

    .line 186
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 202
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/yelp/android/services/push/Notifier;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 206
    invoke-static {p0, p1}, Lcom/yelp/android/services/push/Notifier;->c(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)Ljava/util/Set;

    move-result-object v2

    .line 207
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 208
    if-eqz p2, :cond_1

    .line 209
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 215
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%s.%d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%s.%d.msg"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ".ids"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 231
    :cond_3
    const-string/jumbo v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method static synthetic a(Lcom/yelp/android/services/push/Notifier;Lcom/yelp/android/services/push/h;Lcom/yelp/android/services/push/Notifier$a;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/services/push/Notifier;->a(Lcom/yelp/android/services/push/h;Lcom/yelp/android/services/push/Notifier$a;)V

    return-void
.end method

.method private a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/h;)V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lcom/yelp/android/services/push/Notifier$1;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/services/push/Notifier$1;-><init>(Lcom/yelp/android/services/push/Notifier;Lcom/yelp/android/services/push/h;)V

    invoke-interface {p2, p1, v0}, Lcom/yelp/android/services/push/h;->a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V

    .line 374
    return-void
.end method

.method private a(Lcom/yelp/android/services/push/h;Lcom/yelp/android/services/push/Notifier$a;)V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/yelp/android/services/push/Notifier$a;->b(Landroid/content/Context;)V

    .line 393
    invoke-interface {p1, p2}, Lcom/yelp/android/services/push/h;->a(Lcom/yelp/android/services/push/Notifier$a;)Landroid/app/Notification;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    const-string/jumbo v2, "action.DELETED_CLEAR_NOTIFICATIONS"

    invoke-virtual {p2, v1, v2}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 410
    iget-object v1, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    const-string/jumbo v2, "action.CLICKED_CLEAR_NOTIFICATIONS"

    invoke-virtual {p2, v1, v2}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 415
    invoke-direct {p0, v0, p2}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/app/Notification;Lcom/yelp/android/services/push/Notifier$a;)V

    .line 416
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/yelp/android/services/push/Notifier;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/yelp/android/services/push/Notifier;->c(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 160
    const-string/jumbo v0, "Notifier"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/services/push/Notifier$NotificationType;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {p0}, Lcom/yelp/android/services/push/Notifier;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".ids"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 304
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 305
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 307
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-object v2

    .line 308
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/g;)V
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/yelp/android/services/push/g;->f()Landroid/net/Uri;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->typeFromUri(Ljava/util/List;)Lcom/yelp/android/services/push/Notifier$NotificationType;

    move-result-object v1

    .line 325
    sget-object v2, Lcom/yelp/android/appdata/Features;->send_received_push_analytics:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v1, v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;->getReceivedIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v2

    .line 327
    if-eqz v2, :cond_0

    .line 328
    invoke-static {v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/services/push/Notifier;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;)Lcom/yelp/android/services/push/h;

    move-result-object v0

    .line 335
    sget-object v2, Lcom/yelp/android/services/push/Notifier$NotificationType;->Messages:Lcom/yelp/android/services/push/Notifier$NotificationType;

    if-ne v1, v2, :cond_1

    .line 336
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/e;

    move-result-object v1

    .line 337
    new-instance v2, Lcom/yelp/android/services/push/d$a;

    invoke-direct {v2, p1}, Lcom/yelp/android/services/push/d$a;-><init>(Lcom/yelp/android/services/push/g;)V

    .line 341
    invoke-virtual {v1, v2}, Lcom/yelp/android/services/push/e;->b(Lcom/yelp/android/services/push/d$a;)V

    .line 345
    invoke-virtual {v1, v2}, Lcom/yelp/android/services/push/e;->a(Lcom/yelp/android/services/push/d$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/services/push/Notifier;->a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/h;)V

    goto :goto_0
.end method
