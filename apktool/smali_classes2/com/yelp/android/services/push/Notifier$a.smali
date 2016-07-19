.class public Lcom/yelp/android/services/push/Notifier$a;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/push/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Notification;

.field private final b:I

.field private final c:Landroid/net/Uri;

.field private final d:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/yelp/android/services/push/g;Landroid/app/Notification;)V
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p3, p0, Lcom/yelp/android/services/push/Notifier$a;->a:Landroid/app/Notification;

    .line 609
    iput p1, p0, Lcom/yelp/android/services/push/Notifier$a;->b:I

    .line 610
    invoke-virtual {p2}, Lcom/yelp/android/services/push/g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->e:Ljava/lang/String;

    .line 611
    invoke-virtual {p2}, Lcom/yelp/android/services/push/g;->f()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->c:Landroid/net/Uri;

    .line 612
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;->typeFromUri(Ljava/util/List;)Lcom/yelp/android/services/push/Notifier$NotificationType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->d:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 613
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;I)I
    .locals 3

    .prologue
    .line 600
    invoke-static {p0}, Lcom/yelp/android/services/push/Notifier;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 601
    invoke-static {p2, p1}, Lcom/yelp/android/services/push/Notifier$a;->a(ILcom/yelp/android/services/push/Notifier$NotificationType;)Ljava/lang/String;

    move-result-object v1

    .line 603
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7

    .prologue
    .line 690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/PendingIntent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/services/push/Notifier$NotificationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 708
    new-instance v2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    const-class v0, Lcom/yelp/android/services/ClearNotificationService;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 710
    const-string/jumbo v0, "extra_notification_type"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 712
    const-string/jumbo v0, "extra_notification_id"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    const-string/jumbo v0, "extra_notification_action"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string/jumbo v0, "extra_notification_uri"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-string/jumbo v0, "extra_notification_message"

    invoke-virtual {v2, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 721
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 730
    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x48000000    # 131072.0f

    invoke-static {p0, v0, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILcom/yelp/android/services/push/Notifier$NotificationType;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 783
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s.%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 738
    iget v0, p0, Lcom/yelp/android/services/push/Notifier$a;->b:I

    iget-object v1, p0, Lcom/yelp/android/services/push/Notifier$a;->d:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-static {v0, v1}, Lcom/yelp/android/services/push/Notifier$a;->a(ILcom/yelp/android/services/push/Notifier$NotificationType;)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {p1}, Lcom/yelp/android/services/push/Notifier;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 741
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 743
    add-int/lit8 v2, v2, 0x1

    .line 747
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 748
    iget-object v3, p0, Lcom/yelp/android/services/push/Notifier$a;->a:Landroid/app/Notification;

    iput v2, v3, Landroid/app/Notification;->number:I

    .line 750
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 751
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 788
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s.%d.msg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/services/push/Notifier$a;->d()Lcom/yelp/android/services/push/Notifier$NotificationType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/yelp/android/services/push/Notifier$a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/push/Notifier$a;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lcom/yelp/android/services/push/Notifier$a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-static {p1}, Lcom/yelp/android/services/push/Notifier;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 757
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0}, Lcom/yelp/android/services/push/Notifier$a;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "//"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 762
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/yelp/android/services/push/Notifier$a;->d()Lcom/yelp/android/services/push/Notifier$NotificationType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".ids"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/yelp/android/services/push/Notifier$a;->d()Lcom/yelp/android/services/push/Notifier$NotificationType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/services/push/Notifier;->b(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)Ljava/util/Set;

    move-result-object v0

    .line 772
    iget v1, p0, Lcom/yelp/android/services/push/Notifier$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-static {p1}, Lcom/yelp/android/services/push/Notifier;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0}, Lcom/yelp/android/services/push/Notifier$a;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 779
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/yelp/android/services/push/Notifier$a;->b:I

    return v0
.end method

.method public a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->d:Lcom/yelp/android/services/push/Notifier$NotificationType;

    iget v1, p0, Lcom/yelp/android/services/push/Notifier$a;->b:I

    invoke-static {p1, v0, v1}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 679
    iget v2, p0, Lcom/yelp/android/services/push/Notifier$a;->b:I

    iget-object v3, p0, Lcom/yelp/android/services/push/Notifier$a;->d:Lcom/yelp/android/services/push/Notifier$NotificationType;

    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->a:Landroid/app/Notification;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/Notifier$a;->d(Landroid/content/Context;)V

    .line 643
    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/Notifier$a;->e(Landroid/content/Context;)V

    .line 644
    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/Notifier$a;->f(Landroid/content/Context;)V

    .line 645
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {p1}, Lcom/yelp/android/services/push/Notifier;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 655
    invoke-direct {p0}, Lcom/yelp/android/services/push/Notifier$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 656
    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 663
    :goto_0
    return-object v0

    .line 662
    :cond_0
    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 663
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public d()Lcom/yelp/android/services/push/Notifier$NotificationType;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$a;->d:Lcom/yelp/android/services/push/Notifier$NotificationType;

    return-object v0
.end method
